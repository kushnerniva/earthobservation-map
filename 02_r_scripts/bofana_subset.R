library(terra)
national_level <- rast("~/00_map_data/data/Mozambique_cropland_10m_2017_2019.tif")
mz_shp <- vect("~/00_map_data/moz_admbnda_adm0_ine_20190607.shp")

# subset national-level raster
national_level_crop <- terra::crop(national_level, mz_shp)
national_level_final <- terra::mask(national_level_crop, mz_shp)
