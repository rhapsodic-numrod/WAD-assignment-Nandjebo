
import { createClient } from '@supabase/supabase-js'

const supabaseUrl = "https://zhpxdkhvsjylpajqojar.supabase.co"
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpocHhka2h2c2p5bHBhanFvamFyIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjI5MDIzODYsImV4cCI6MTk3ODQ3ODM4Nn0.RZo3Rq7zpGDMP1CZJMduX_6ZyeiK4R6K817c2EDx8HI'

export const supabase = createClient(supabaseUrl, supabaseKey)