///Scr_StoreScreenInBuffer();

with(Obj_RenderPipeline)
{
    if(surface_exists(BufferSurface))
    {
        surface_copy(BufferSurface, 0, 0, application_surface);
    }
}
