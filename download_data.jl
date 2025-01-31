import Downloads
import ProgressMeter: Progress, update!

function download_data()
    if !isfile("data/bay_area_freeways.csv.gz")
        progress = nothing
        Downloads.download("https://files.indicatrix.org/bay_area_freeways.csv.gz", "data/bay_area_freeways.csv.gz",
            progress=(total, sofar) -> begin
                if total > 0 && isnothing(progress)
                    progress = Progress(total)
                elseif total > 0
                    update!(progress, sofar)
                end
            end)

        finish!(progress)
    else
        println("Data already downloaded.")
    end
end