# ## Functions to map colors with factors

# To help choosing colors, I use:
#https://colorbrewer2.org/#type=sequential&scheme=BuGn&n=3
#https://www.hexcolortool.com/#fec34d
#https://vis4.net/palettes/#/9|d|00429d,96ffea,ffffe0|ffffe0,ff005e,93003a|1|1

############
### Color for Cell types and treatment

#Color_Sample_stage<- setNames(c("#a6bddb","#ece7f2","#2b8cbe","#fec44f","#fff7bc","#d95f0e"),   c( "Germ.Ctrl","Germ.yki_RNAi","Germ.hpo_RNAi","Somatic.Ctrl"  ,"Somatic.yki_RNAi" ,"Somatic.hpo_RNAi" ))
Color_Sample_stage<- setNames(c("#00429d","#5681b9","#93c4d2","#93003a","#ffa59e","#dd4c65"),  
                              c( "Germ.Ctrl","Germ.yki_RNAi","Germ.hpo_RNAi","Somatic.Ctrl"  ,"Somatic.yki_RNAi" ,"Somatic.hpo_RNAi" ))

Shape_Sample_stage<- setNames(c(16,17,15),  
                              c( "Early","Mid","Late" ))



scale_color_CellTreatment<- function(...){
    ggplot2:::manual_scale(
        'color',
        values =Color_Sample_stage
    )
}

scale_fill_CellTreatment<- function(...){
    ggplot2:::manual_scale(
        'fill',
        values = Color_Sample_stage
    )
}

## Colors Germ vs SOmatic
scale_fill_CellType<- function(...){
    ggplot2:::manual_scale(
        'fill',
        values = setNames(c("#0570b0","#cc4c02"),   c( "Germ","Somatic" ))
    )
}


## Colors for only somatic cells plots
scale_color_Somatic_intersect<- function(...){
    ggplot2:::manual_scale(
        'color',
        values =Color_Sample_stage[4:6]
    )
}
scale_fill_Somatic_intersect<- function(...){
    ggplot2:::manual_scale(
        'fill',
        values =Color_Sample_stage[4:6]
    )
}

## Colors for only Germ cells  plots
scale_color_Germ_intersect<- function(...){
    ggplot2:::manual_scale(
        'color',
        values =Color_Sample_stage[1:5]
    )
}
scale_fill_Germ_intersect<- function(...){
    ggplot2:::manual_scale(
        'fill',
        values =Color_Sample_stage[1:5]
    )
}
############
### Color for Cell types and stage

Color_Cell_stage<- setNames(c("#002984","#66A8FF","#996615","#FFCC7B","#93003A","#F966A0"),  
                              c( "Germ.Early","Somatic.Early","Germ.Mid","Somatic.Mid","Germ.Late"  ,"Somatic.Late"  ))


scale_color_CellStage<- function(...){
    ggplot2:::manual_scale(
        'color',
        values =Color_Cell_stage
    )
}

scale_fill_CellStage<- function(...){
    ggplot2:::manual_scale(
        'fill',
        values = Color_Cell_stage
    )
}
#####################################
## Color for WHOLE OVARIES STAGES
Color_WHO<-setNames(c('#00429d', '#ffcc7b', '#93003a'), 
                    c( "Early","Mid","Late"))

scale_fill_Ctrl_Stage<- function(...){
    ggplot2:::manual_scale(
        'fill',
        values = Color_WHO
    )
}
scale_color_Ctrl_Stage<- function(...){
    ggplot2:::manual_scale(
        'color',
        values = Color_WHO
    )
}


##############
## Symbols palletes

#for plotly
symbolset <-setNames( c('circle', 'cross', 'square'),c("Early", "Late","Mid") )


## Colors for only Germ cells  plots
scale_3_shapes<- function(...){
    ggplot2:::manual_scale(
        'shape',
        values =Shape_Sample_stage
    )
}

