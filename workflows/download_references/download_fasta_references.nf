nextflow.enable.dsl = 2

/*
================================
params
================================
*/

params.results_dir = 'results/fastaFiles'
params.api_key = "${NCBI_API_KEY}"

/*
================================
ids of genomes to be downloaded
================================
*/


ids = [
        'CU458896',
        'MVHK00000000',
        'MVHY00000000',
        'PDCP00000000',
        'UGQK00000000',
        'MVHC00000000',
        'MVHD00000000',
        'MVHE00000000',
        'MVHF00000000',
        'JALN00000000',
        'MVHG00000000',
        'MVHH00000000',
        'MVHI00000000',
        'NZ_UPHT00000000',
        'NZ_POTN00000000',
        'CVQQ00000000',
        'CCAW00000000',
        'ACFI00000000',
        'AE016958',
        'AYOC00000000',
        'AWXK00000000',
        'MVHJ00000000',
        'PDCO00000000',
        'NZ_LQOK00000000',
        'MVHL00000000',
        'MVHM00000000',
        'BCSX00000000',
        'PDCN00000000',
        'NZ_LQOL00000000',
        'NZ_LQOM00000000',
        'MVHN00000000',
        'NZ_LQON00000000',
        'NZ_CP010071',
        'CP031516',
        'NZ_LR134355',
        'BCQY00000000',
        'MVHO00000000',
        'AFVW00000000',
        'NZ_LQOP00000000',
        'NZ_LQOQ00000000',
        'NZ_LQOR00000000',
        'CCBB00000000',
        'BBHD00000000',
        'NZ_NCXP00000000',
        'PDCR00000000',
        'NZ_LQOS00000000',
        'PDCQ00000000',
        'NZ_SMSD00000000',
        'MVHP00000000',
        'NZ_LQOT00000000',
        'NZ_LQOU00000000',
        'NZ_LQOJ00000000',
        'CCAY00000000',
        'NZ_MIHA00000000',
        'NZ_LQOV00000000',
        'BBFT00000000',
        'ALQB00000000',
        'BCSZ01000000',
        'NZ_LQOW00000000',
        'MVHQ00000000',
        'NZ_LQOX00000000',
        'JAGZ00000000',
        'CP002385',
        'CP012150',
        'NZ_LQOY00000000',
        'MCHX00000000',
        'CP011883',
        'ARBU00000000',
        'LFOF00000000',
        'MVHR00000000',
        'LDPO00000000',
        'NZ_LQOZ00000000',
        'BBGO00000000',
        'MIGZ00000000',
        'FJVO00000000',
        'NZ_LQPA00000000',
        'NZ_UPHQ00000000',
        'MVHS00000000',
        'NZ_LQPB00000000',
        'MVHT00000000',
        'CP003322',
        'NZ_MRBR00000000',
        'CP003347',
        'NZ_LQPC00000000',
        'NC022663',
        'CVTA01000001',
        'NZ_NCXO00000000',
        'NZ_LQPD00000000',
        'MVHU00000000',
        ' NZ_QJUA00000000',
        'NZ_LQPE00000000',
        'NZ_LQPF00000000',
        'LQIR00000000',
        'CTEE00000000',
        'AL450380',
        'NZ_CP021238',
        'CP019882',
        'JXST00000000',
        'NZ_LQPG00000000',
        'CCBF00000000',
        'NZ_CVTB00000000',
        'MVHV00000000',
        'MVHW00000000',
        'NZ_ANPL00000000',
        'MVHX00000000',
        'MVHZ00000000',
        'MVIA00000000',
        'BFCH00000000',
        'MVIB00000000',
        'CYSI00000000',
        'NZ_LQPH00000000',
        'JMDW00000000',
        'NKCO00000000',
        'CWKH00000000',
        'NZ_LQPI00000000',
        'MVIC00000000',
        'BCTA00000000',
        'JYNU00000000',
        'BBHE00000000',
        'NZ_LQPJ00000000',
        'NZ_LQPM00000000',
        'MPNT00000000',
        'MVID00000000',
        'NZ_CP025546',
        'NZ_NCXN00000000',
        'ADNV00000000',
        'MVIE00000000',
        'NZ_LQPO00000000',
        'NZ_LQPP00000000',
        'MVIF00000000',
        'CP014475',
        'NZ_POTM00000000',
        'MVIG00000000',
        'NZ_UPHU00000000',
        'BCND00000000',
        'BBHB00000000',
        'MVIH00000000',
        'NZ_LQPQ00000000',
        'BBGS00000000',
        'BBHF00000000',
        'MAFR00000000',
        'MVII00000000',
        'NZ_LQPR00000000',
        'MVIJ00000000',
        'LDCO00000000',
        'NZ_LQPS00000000',
        'NZ_CBMO010000000',
        'JTJW00000000',
        'NZ_LQPT00000000',
        'NR_146370',
        'NZ_LQPU00000000',
        'MVIK00000000',
        'CBMJ00000000',
        'NZ_LN831039',
        'NZ_NOZR00000000',
        'AP018165',
        'NZ_MLCL00000000',
        'NZ_LQPW00000000',
        'NZ_MLQM00000000',
        'NZ_LQPX00000000',
        'AGVE00000000',
        'MVIL00000000',
        'NZ_UGQT00000000',
        'NZ_LQPY00000000',
        'NZ_LQPZ00000000',
        'NC000962',
        'MVIM00000000',
        'NC_008611',
        'ALQA00000000',
        'CP000511',
        'PUEV00000000',
        'NZ_NCXM00000000',
        'NZ_LQQA00000000',
        'NZ_LQQB00000000'
]


process NCBI_ACC_DOWNLOAD {
    tag "${genomeId}"
    errorStrategy "ignore"
    cpus 2
    publishDir params.results_dir, mode: 'move'

    input:
    val(genomeId)

    output:
    path("*fa")

    script:

    """
    ncbi-acc-download --format fasta ${genomeId}

    """


}


workflow DOWNLOAD_REFERENCES {

    sra_ch = Channel.of(ids)

    NCBI_ACC_DOWNLOAD(sra_ch.flatten())

}
