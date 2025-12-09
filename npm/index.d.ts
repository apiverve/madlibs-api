declare module '@apiverve/madlibs' {
  export interface madlibsOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface madlibsResponse {
    status: string;
    error: string | null;
    data: MadLibsGeneratorData;
    code?: number;
  }


  interface MadLibsGeneratorData {
      stories:  Story[];
      count:    number;
      category: string;
      html:     string;
  }
  
  interface Story {
      title:      string;
      template:   string;
      blanks:     Blank[];
      blankCount: number;
      category:   string;
  }
  
  interface Blank {
      id:    number;
      type:  string;
      label: string;
  }

  export default class madlibsWrapper {
    constructor(options: madlibsOptions);

    execute(callback: (error: any, data: madlibsResponse | null) => void): Promise<madlibsResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: madlibsResponse | null) => void): Promise<madlibsResponse>;
    execute(query?: Record<string, any>): Promise<madlibsResponse>;
  }
}
