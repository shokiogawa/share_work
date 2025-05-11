export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  graphql_public: {
    Tables: {
      [_ in never]: never
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      graphql: {
        Args: {
          operationName?: string
          query?: string
          variables?: Json
          extensions?: Json
        }
        Returns: Json
      }
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
  public: {
    Tables: {
      own_worship_cards: {
        Row: {
          created_at: string | null
          id: number
          id_user: number
          id_worship_card: number
          number: string | null
          updated_at: string | null
        }
        Insert: {
          created_at?: string | null
          id?: never
          id_user: number
          id_worship_card: number
          number?: string | null
          updated_at?: string | null
        }
        Update: {
          created_at?: string | null
          id?: never
          id_user?: number
          id_worship_card?: number
          number?: string | null
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "users_id_fk"
            columns: ["id_user"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "worship_cards_id_fk"
            columns: ["id_worship_card"]
            isOneToOne: false
            referencedRelation: "v_own_worship_card"
            referencedColumns: ["id_worship_card"]
          },
          {
            foreignKeyName: "worship_cards_id_fk"
            columns: ["id_worship_card"]
            isOneToOne: false
            referencedRelation: "v_worship_card_with_max_number"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "worship_cards_id_fk"
            columns: ["id_worship_card"]
            isOneToOne: false
            referencedRelation: "worship_cards"
            referencedColumns: ["id"]
          },
        ]
      }
      places: {
        Row: {
          created_at: string | null
          id: number
          name: string
          updated_at: string | null
        }
        Insert: {
          created_at?: string | null
          id?: never
          name: string
          updated_at?: string | null
        }
        Update: {
          created_at?: string | null
          id?: never
          name?: string
          updated_at?: string | null
        }
        Relationships: []
      }
      shrines: {
        Row: {
          created_at: string | null
          id: number
          id_place: number | null
          latitude: number
          longitude: number
          name: string
          number: string | null
          ruby: string
          type_register_stamp: string | null
          updated_at: string | null
          url: string | null
        }
        Insert: {
          created_at?: string | null
          id?: never
          id_place?: number | null
          latitude: number
          longitude: number
          name: string
          number?: string | null
          ruby: string
          type_register_stamp?: string | null
          updated_at?: string | null
          url?: string | null
        }
        Update: {
          created_at?: string | null
          id?: never
          id_place?: number | null
          latitude?: number
          longitude?: number
          name?: string
          number?: string | null
          ruby?: string
          type_register_stamp?: string | null
          updated_at?: string | null
          url?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "places_id_fk"
            columns: ["id_place"]
            isOneToOne: false
            referencedRelation: "places"
            referencedColumns: ["id"]
          },
        ]
      }
      shrines_images: {
        Row: {
          created_at: string | null
          id: number
          id_shrine: number | null
          name: string
          path: string
          updated_at: string | null
        }
        Insert: {
          created_at?: string | null
          id?: never
          id_shrine?: number | null
          name: string
          path: string
          updated_at?: string | null
        }
        Update: {
          created_at?: string | null
          id?: never
          id_shrine?: number | null
          name?: string
          path?: string
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "shrines_id_fk"
            columns: ["id_shrine"]
            isOneToOne: false
            referencedRelation: "shrines"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "shrines_id_fk"
            columns: ["id_shrine"]
            isOneToOne: false
            referencedRelation: "v_own_worship_card"
            referencedColumns: ["id_shirine"]
          },
          {
            foreignKeyName: "shrines_id_fk"
            columns: ["id_shrine"]
            isOneToOne: false
            referencedRelation: "v_worship_card_with_max_number"
            referencedColumns: ["id_shirine"]
          },
        ]
      }
      users: {
        Row: {
          created_at: string | null
          email: string
          id: number
          name: string
          updated_at: string | null
          uuid: string
        }
        Insert: {
          created_at?: string | null
          email: string
          id?: never
          name: string
          updated_at?: string | null
          uuid: string
        }
        Update: {
          created_at?: string | null
          email?: string
          id?: never
          name?: string
          updated_at?: string | null
          uuid?: string
        }
        Relationships: []
      }
      worship_cards: {
        Row: {
          comment: string
          created_at: string | null
          id: number
          id_shrine: number
          is_current: number
          updated_at: string | null
        }
        Insert: {
          comment: string
          created_at?: string | null
          id?: never
          id_shrine: number
          is_current: number
          updated_at?: string | null
        }
        Update: {
          comment?: string
          created_at?: string | null
          id?: never
          id_shrine?: number
          is_current?: number
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "shrines_id_fk"
            columns: ["id_shrine"]
            isOneToOne: false
            referencedRelation: "shrines"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "shrines_id_fk"
            columns: ["id_shrine"]
            isOneToOne: false
            referencedRelation: "v_own_worship_card"
            referencedColumns: ["id_shirine"]
          },
          {
            foreignKeyName: "shrines_id_fk"
            columns: ["id_shrine"]
            isOneToOne: false
            referencedRelation: "v_worship_card_with_max_number"
            referencedColumns: ["id_shirine"]
          },
        ]
      }
    }
    Views: {
      v_own_worship_card: {
        Row: {
          comment: string | null
          created_at: string | null
          id_own_worship_card: number | null
          id_shirine: number | null
          id_user: number | null
          id_worship_card: number | null
          name: string | null
          number: string | null
          ruby: string | null
        }
        Relationships: [
          {
            foreignKeyName: "users_id_fk"
            columns: ["id_user"]
            isOneToOne: false
            referencedRelation: "users"
            referencedColumns: ["id"]
          },
        ]
      }
      v_worship_card_with_max_number: {
        Row: {
          comment: string | null
          created_at: string | null
          id: number | null
          id_shirine: number | null
          id_shrine: number | null
          is_current: number | null
          max_num: string | null
          max_number: string | null
          updated_at: string | null
        }
        Relationships: [
          {
            foreignKeyName: "shrines_id_fk"
            columns: ["id_shrine"]
            isOneToOne: false
            referencedRelation: "shrines"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "shrines_id_fk"
            columns: ["id_shrine"]
            isOneToOne: false
            referencedRelation: "v_own_worship_card"
            referencedColumns: ["id_shirine"]
          },
          {
            foreignKeyName: "shrines_id_fk"
            columns: ["id_shrine"]
            isOneToOne: false
            referencedRelation: "v_worship_card_with_max_number"
            referencedColumns: ["id_shirine"]
          },
        ]
      }
    }
    Functions: {
      [_ in never]: never
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
  storage: {
    Tables: {
      buckets: {
        Row: {
          allowed_mime_types: string[] | null
          avif_autodetection: boolean | null
          created_at: string | null
          file_size_limit: number | null
          id: string
          name: string
          owner: string | null
          owner_id: string | null
          public: boolean | null
          updated_at: string | null
        }
        Insert: {
          allowed_mime_types?: string[] | null
          avif_autodetection?: boolean | null
          created_at?: string | null
          file_size_limit?: number | null
          id: string
          name: string
          owner?: string | null
          owner_id?: string | null
          public?: boolean | null
          updated_at?: string | null
        }
        Update: {
          allowed_mime_types?: string[] | null
          avif_autodetection?: boolean | null
          created_at?: string | null
          file_size_limit?: number | null
          id?: string
          name?: string
          owner?: string | null
          owner_id?: string | null
          public?: boolean | null
          updated_at?: string | null
        }
        Relationships: []
      }
      migrations: {
        Row: {
          executed_at: string | null
          hash: string
          id: number
          name: string
        }
        Insert: {
          executed_at?: string | null
          hash: string
          id: number
          name: string
        }
        Update: {
          executed_at?: string | null
          hash?: string
          id?: number
          name?: string
        }
        Relationships: []
      }
      objects: {
        Row: {
          bucket_id: string | null
          created_at: string | null
          id: string
          last_accessed_at: string | null
          metadata: Json | null
          name: string | null
          owner: string | null
          owner_id: string | null
          path_tokens: string[] | null
          updated_at: string | null
          version: string | null
        }
        Insert: {
          bucket_id?: string | null
          created_at?: string | null
          id?: string
          last_accessed_at?: string | null
          metadata?: Json | null
          name?: string | null
          owner?: string | null
          owner_id?: string | null
          path_tokens?: string[] | null
          updated_at?: string | null
          version?: string | null
        }
        Update: {
          bucket_id?: string | null
          created_at?: string | null
          id?: string
          last_accessed_at?: string | null
          metadata?: Json | null
          name?: string | null
          owner?: string | null
          owner_id?: string | null
          path_tokens?: string[] | null
          updated_at?: string | null
          version?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "objects_bucketId_fkey"
            columns: ["bucket_id"]
            isOneToOne: false
            referencedRelation: "buckets"
            referencedColumns: ["id"]
          },
        ]
      }
      s3_multipart_uploads: {
        Row: {
          bucket_id: string
          created_at: string
          id: string
          in_progress_size: number
          key: string
          owner_id: string | null
          upload_signature: string
          version: string
        }
        Insert: {
          bucket_id: string
          created_at?: string
          id: string
          in_progress_size?: number
          key: string
          owner_id?: string | null
          upload_signature: string
          version: string
        }
        Update: {
          bucket_id?: string
          created_at?: string
          id?: string
          in_progress_size?: number
          key?: string
          owner_id?: string | null
          upload_signature?: string
          version?: string
        }
        Relationships: [
          {
            foreignKeyName: "s3_multipart_uploads_bucket_id_fkey"
            columns: ["bucket_id"]
            isOneToOne: false
            referencedRelation: "buckets"
            referencedColumns: ["id"]
          },
        ]
      }
      s3_multipart_uploads_parts: {
        Row: {
          bucket_id: string
          created_at: string
          etag: string
          id: string
          key: string
          owner_id: string | null
          part_number: number
          size: number
          upload_id: string
          version: string
        }
        Insert: {
          bucket_id: string
          created_at?: string
          etag: string
          id?: string
          key: string
          owner_id?: string | null
          part_number: number
          size?: number
          upload_id: string
          version: string
        }
        Update: {
          bucket_id?: string
          created_at?: string
          etag?: string
          id?: string
          key?: string
          owner_id?: string | null
          part_number?: number
          size?: number
          upload_id?: string
          version?: string
        }
        Relationships: [
          {
            foreignKeyName: "s3_multipart_uploads_parts_bucket_id_fkey"
            columns: ["bucket_id"]
            isOneToOne: false
            referencedRelation: "buckets"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "s3_multipart_uploads_parts_upload_id_fkey"
            columns: ["upload_id"]
            isOneToOne: false
            referencedRelation: "s3_multipart_uploads"
            referencedColumns: ["id"]
          },
        ]
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      can_insert_object: {
        Args: {
          bucketid: string
          name: string
          owner: string
          metadata: Json
        }
        Returns: undefined
      }
      extension: {
        Args: {
          name: string
        }
        Returns: string
      }
      filename: {
        Args: {
          name: string
        }
        Returns: string
      }
      foldername: {
        Args: {
          name: string
        }
        Returns: string[]
      }
      get_size_by_bucket: {
        Args: Record<PropertyKey, never>
        Returns: {
          size: number
          bucket_id: string
        }[]
      }
      list_multipart_uploads_with_delimiter: {
        Args: {
          bucket_id: string
          prefix_param: string
          delimiter_param: string
          max_keys?: number
          next_key_token?: string
          next_upload_token?: string
        }
        Returns: {
          key: string
          id: string
          created_at: string
        }[]
      }
      list_objects_with_delimiter: {
        Args: {
          bucket_id: string
          prefix_param: string
          delimiter_param: string
          max_keys?: number
          start_after?: string
          next_token?: string
        }
        Returns: {
          name: string
          id: string
          metadata: Json
          updated_at: string
        }[]
      }
      search: {
        Args: {
          prefix: string
          bucketname: string
          limits?: number
          levels?: number
          offsets?: number
          search?: string
          sortcolumn?: string
          sortorder?: string
        }
        Returns: {
          name: string
          id: string
          updated_at: string
          created_at: string
          last_accessed_at: string
          metadata: Json
        }[]
      }
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type PublicSchema = Database[Extract<keyof Database, "public">]

export type Tables<
  PublicTableNameOrOptions extends
    | keyof (PublicSchema["Tables"] & PublicSchema["Views"])
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof (Database[PublicTableNameOrOptions["schema"]]["Tables"] &
        Database[PublicTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? (Database[PublicTableNameOrOptions["schema"]]["Tables"] &
      Database[PublicTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : PublicTableNameOrOptions extends keyof (PublicSchema["Tables"] &
        PublicSchema["Views"])
    ? (PublicSchema["Tables"] &
        PublicSchema["Views"])[PublicTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  PublicTableNameOrOptions extends
    | keyof PublicSchema["Tables"]
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? Database[PublicTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : PublicTableNameOrOptions extends keyof PublicSchema["Tables"]
    ? PublicSchema["Tables"][PublicTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  PublicTableNameOrOptions extends
    | keyof PublicSchema["Tables"]
    | { schema: keyof Database },
  TableName extends PublicTableNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = PublicTableNameOrOptions extends { schema: keyof Database }
  ? Database[PublicTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : PublicTableNameOrOptions extends keyof PublicSchema["Tables"]
    ? PublicSchema["Tables"][PublicTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  PublicEnumNameOrOptions extends
    | keyof PublicSchema["Enums"]
    | { schema: keyof Database },
  EnumName extends PublicEnumNameOrOptions extends { schema: keyof Database }
    ? keyof Database[PublicEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = PublicEnumNameOrOptions extends { schema: keyof Database }
  ? Database[PublicEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : PublicEnumNameOrOptions extends keyof PublicSchema["Enums"]
    ? PublicSchema["Enums"][PublicEnumNameOrOptions]
    : never

