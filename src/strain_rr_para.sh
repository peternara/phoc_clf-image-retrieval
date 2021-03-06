EP_LIST='0.01 0.03 0.1 0.3 1 3'
FUSION_LIST='block blocktucker mutan tucker mlb mfb mfh'
#FUSION_LIST='block blocktucker mutan tucker mfb mfh'
REG_LIST='L1'

for EP in $EP_LIST; do
    for FUSION in $FUSION_LIST; do
        for REG in $REG_LIST; do
            #sbatch -A fashion -p fashion --cpus-per-task 8 strain_rr.sh $EP
            #sbatch strain_rr.sh $EP $FUSION
            sbatch -A l2 -p l2 --cpus-per-task 8 strain_rr.sh $EP $FUSION $REG
            sleep 2
        done
    done
done
