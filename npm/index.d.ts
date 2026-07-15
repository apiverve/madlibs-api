declare module '@apiverve/madlibs' {
  export interface madlibsOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface madlibsResponse {
    status: string;
    error: string | null;
    data: MadLibsGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface MadLibsGeneratorData {
      stories:  Story[];
      count:    number | null;
      category: null | string;
      html:     null | string;
      image:    Image;
  }
  
  interface Image {
      imageName:   null | string;
      format:      null | string;
      downloadURL: null | string;
      expires:     number | null;
  }
  
  interface Story {
      title:      null | string;
      template:   null | string;
      blanks:     Blank[];
      blankCount: number | null;
      category:   null | string;
  }
  
  interface Blank {
      id:    number | null;
      type:  null | string;
      label: null | string;
  }

  export default class madlibsWrapper {
    constructor(options: madlibsOptions);

    execute(callback: (error: any, data: madlibsResponse | null) => void): Promise<madlibsResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: madlibsResponse | null) => void): Promise<madlibsResponse>;
    execute(query?: Record<string, any>): Promise<madlibsResponse>;
  }
}
