function corr_CK(data::Matrix)
    # This function is used to calculate the pairwise correlation with p value for input data
    sas = pyimport("scipy.stats")
    pd = pyimport("pandas")
    np = pyimport("numpy")
    r = pd.DataFrame(data)[:corr]()
    n = size(data, 1)
    tt= r*np.sqrt((n-2)/(1-r.^2))
    PairwiseCorrelation = r[:values]
    PValue = 2 .* sas.t[:cdf](-abs.(tt), n-2)
 
    return PairwiseCorrelation, PValue
end
