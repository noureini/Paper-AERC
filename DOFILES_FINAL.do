************** Final Essai

**************STAT DESC 

sum sex_cm_hom age_cm instruc_cm_aucune instruc_cm_prim taille_menage nbre_enf_0_3ans nbre_enf_4_10ans nbre_ado nbre_jeune_adulte nbre_adulte dummy_sud touareg haoussa peulh nbre_ovins_menage nbre_bovins_menage petit_el grand_el eng_calo_tot_ind_jour eng_from_cereals_ind_jr eng_from_animalprod_ind_jr hhdds profit_moy_past_an acc_ext_serv access_alimbet_pm acc_health_an_priv if out_calo_ind==1
****** Extension services 
******************* Total, natural direct and natural indirect effect on HHDDS 
teffects ipwra (lhhdds sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_ext_serv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)
tebalance overid
teffects overlap
teffects ipwra (lhhdds sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_ext_serv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit), atet
tebalance overid
teffects ipwra (lprofitn_moy_past_an sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_ext_serv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)
global varlist sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim
ivregress 2sls lhhdds acc_ext_serv $varlist (lprofitn_moy_past_an= maladie_betail temp2_max_2016), vce(robust) first
ivregress 2sls lhhdds acc_ext_serv $varlist (lprofitn_moy_past_an= camp_past_herb temp_max_2016 temp2_max_2016), vce(robust) first
twostepweakiv 2sls lhhdds acc_ext_serv $varlist (lprofitn_moy_past_an= camp_past_herb temp_max_2016 temp2_max_2016)
estat endogenous
estat overid
weakivtest
estat firststage

************ Total, indirect and direct impact of extension services on caloric intakes
teffects ipwra (leng_calo_tot_ind_jour sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_ext_serv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)
teffects ipwra (leng_calo_tot_ind_jour sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_ext_serv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit),atet
tebalance overid
ivregress 2sls leng_calo_tot_ind_jour acc_ext_serv $varlist (lprofitn_moy_past_an= maladie_betail temp2_max_2016), vce(robust) first
ivregress 2sls leng_calo_tot_ind_jour acc_ext_serv $varlist (lprofitn_moy_past_an= camp_past_herb temp_max_2016 temp2_max_2016), vce(robust) first
twostepweakiv 2sls leng_calo_tot_ind_jour acc_ext_serv $varlist (lprofitn_moy_past_an= camp_past_herb temp_max_2016 temp2_max_2016)
estat endogenous
estat overid
weakivtest
estat firststage


teffects ipwra (leng_from_cereals_ind_jr sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_ext_serv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)
teffects ipwra (leng_from_cereals_ind_jr sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_ext_serv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit),atet

ivregress 2sls leng_from_cereals_ind_jr acc_ext_serv $varlist (lprofitn_moy_past_an= maladie_betail temp2_max_2016), vce(robust) first
ivregress 2sls leng_from_cereals_ind_jr acc_ext_serv $varlist (lprofitn_moy_past_an= camp_past_herb temp_max_2016 temp2_max_2016), vce(robust) first
twostepweakiv 2sls leng_from_cereals_ind_jr acc_ext_serv $varlist (lprofitn_moy_past_an= camp_past_herb temp_max_2016 temp2_max_2016)
estat endogenous
estat overid
weakivtest
estat firststage

teffects ipwra (leng_from_animalprod_ind_jr sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_ext_serv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit) if new_1==0
teffects ipwra (leng_from_animalprod_ind_jr sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_ext_serv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit) if new_1==0, atet
ivregress 2sls leng_from_animalprod_ind_jr  acc_ext_serv $varlist (lprofitn_moy_past_an= maladie_betail temp2_max_2016), vce(robust) first

estat endogenous
estat overid
weakivtest
estat firststage


***** Policy 2 : low_cost_livestock feed
teffects ipwra (lhhdds sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( access_alimbet_pm sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)
teffects ipwra (lprofitn_moy_past_an sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( access_alimbet_pm sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)
ivregress 2sls lhhdds access_alimbet_pm $varlist (lprofitn_moy_past_an= maladie_betail temp2_max_2016), vce(robust) first
estat endogenous
estat overid
weakivtest
estat firststage
teffects ipwra (leng_calo_tot_ind_jour sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( access_alimbet_pm sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)
ivregress 2sls leng_calo_tot_ind_jour access_alimbet_pm $varlist (lprofitn_moy_past_an= maladie_betail temp2_max_2016), vce(robust) first
estat endogenous
estat overid
weakivtest
estat firststage
teffects ipwra (leng_from_cereals_ind_jr sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( access_alimbet_pm sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)
ivregress 2sls leng_from_cereals_ind_jr access_alimbet_pm $varlist (lprofitn_moy_past_an= maladie_betail temp2_max_2016), vce(robust) first
estat endogenous
estat overid
weakivtest
estat firststage
teffects ipwra (leng_from_animalprod_ind_jr sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( access_alimbet_pm sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit) if new_1==0
ivregress 2sls leng_from_animalprod_ind_jr access_alimbet_pm $varlist (lprofitn_moy_past_an= maladie_betail temp2_max_2016), vce(robust) first
estat endogenous
estat overid
weakivtest
estat firststage
***** Policy 3 : private veterinary services
teffects ipwra (lhhdds sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_health_an_priv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)
teffects ipwra (lprofitn_moy_past_an sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) (acc_health_an_priv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)
ivregress 2sls lhhdds acc_health_an_priv $varlist (lprofitn_moy_past_an= maladie_betail temp2_max_2016), vce(robust) first
estat endogenous
estat overid
weakivtest
estat firststage
teffects ipwra (leng_calo_tot_ind_jour sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_health_an_priv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)
ivregress 2sls leng_calo_tot_ind_jour acc_health_an_priv $varlist (lprofitn_moy_past_an= maladie_betail temp2_max_2016), vce(robust) first
estat endogenous
estat overid
weakivtest
estat firststage
teffects ipwra (leng_from_cereals_ind_jr sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) (acc_health_an_priv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)
ivregress 2sls leng_from_cereals_ind_jr acc_health_an_priv $varlist (lprofitn_moy_past_an= maladie_betail temp2_max_2016), vce(robust) first
estat endogenous
estat overid
weakivtest
estat firststage
teffects ipwra (leng_from_animalprod_ind_jr sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_health_an_priv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit) if new_1==0
ivregress 2sls leng_from_animalprod_ind_jr acc_health_an_priv $varlist (lprofitn_moy_past_an= maladie_betail temp2_max_2016), vce(robust) first
estat endogenous
estat overid
weakivtest
estat firststage
******** Monte carlo estimation of the standard errors of the indirect effect : 
**************** The Monte carlo program 
************* Indirect effect of the policies on household dietary diversity score 
******************************** For extension services 
set obs 50000
set seed 987654
generate a_ext_hhdds = rnormal(0.20,0.095)
generate b_ext_hhdds = rnormal(0.426,0.120)
generate IE_ext_hhdds = a_ext_hhdds*b_ext_hhdds
kdensity IE_ext_hhdds
sum IE_ext_hhdds
_pctile IE_ext_hhdds, p(2.5 97.5)
return list
******************************** For Private veterinary 
generate a_priv_hhdds = rnormal(0.05,0.087)
generate b_priv_hhdds = rnormal(0.423,0.118)
generate IE_priv_hhdds = a_priv_hhdds*b_priv_hhdds
kdensity IE_priv_hhdds
sum IE_priv_hhdds
_pctile IE_priv_hhdds, p(2.5 97.5)
return list
******************************** For low-cost livestock feed
generate a_lc_hhdds = rnormal(0.114,0.102)
generate b_lc_hhdds = rnormal(0.418,0.115)
generate IE_lc_hhdds = a_lc_hhdds*b_lc_hhdds
kdensity IE_lc_hhdds
sum IE_lc_hhdds
_pctile IE_lc_hhdds, p(2.5 97.5)
return list
************* Indirect effect of the policies on total caloric intake 
******************************** For extension services 
generate a_ext_engt = rnormal(0.20,0.095)
generate b_ext_engt = rnormal(-0.712,0.236)
generate IE_ext_engt = a_ext_engt*b_ext_engt
kdensity IE_ext_engt
sum IE_ext_engt
_pctile IE_ext_engt, p(2.5 97.5)
return list
******************************** For private veterinary services 
generate a_priv_engt = rnormal(0.05,0.087)
generate b_priv_engt = rnormal(-0.711,0.240)
generate IE_priv_engt = a_priv_engt*b_priv_engt
kdensity IE_priv_engt
sum IE_priv_engt
_pctile IE_priv_engt, p(2.5 97.5)
return list

******************************** For low cost livestock feed 
generate a_lc_engt = rnormal(0.114,0.102)
generate b_lc_engt = rnormal(-0.748,0.242)
generate IE_lc_engt = a_lc_engt*b_lc_engt
kdensity IE_lc_engt
sum IE_lc_engt
_pctile IE_lc_engt, p(2.5 97.5)
return list

************* Indirect effect of the policies on total caloric intake from cereals
******************************** For extension services
generate a_ext_engc = rnormal(0.20,0.095)
generate b_ext_engc = rnormal(-0.940,0.267)
generate IE_ext_engc = a_ext_engc*b_ext_engc
kdensity IE_ext_engc
sum IE_ext_engc
_pctile IE_ext_engc, p(2.5 97.5)
return list

******************************** For private veterinary services 
generate a_priv_engc = rnormal(0.05,0.087)
generate b_priv_engc = rnormal(-0.939,0.272)
generate IE_priv_engc = a_priv_engc*b_priv_engc
kdensity IE_priv_engc
sum IE_priv_engc
_pctile IE_priv_engc, p(2.5 97.5)
return list

******************************** For low cost livestock feed 
generate a_lc_engc = rnormal(0.114,0.102)
generate b_lc_engc = rnormal(-0.985,0.276)
generate IE_lc_engc = a_lc_engc*b_lc_engc
kdensity IE_lc_engc
sum IE_lc_engc
_pctile IE_lc_engc, p(2.5 97.5)
return list

************* Indirect effect of the policies on total caloric intake from animal food product 
******************************** For extension services
generate a_ext_enga = rnormal(0.2,0.095)
generate b_ext_enga = rnormal(0.412,0.111)
generate IE_ext_enga = a_ext_enga*b_ext_enga
kdensity IE_ext_enga
sum IE_ext_enga
_pctile IE_ext_enga, p(2.5 97.5)
return list

******************************** For extension private veterinary services 
generate a_priv_enga = rnormal(0.05,0.087)
generate b_priv_enga = rnormal(0.413,0.111)
generate IE_priv_enga = a_priv_enga*b_priv_enga
kdensity IE_priv_enga
sum IE_priv_enga
_pctile IE_priv_enga, p(2.5 97.5)
return list

******************************** For low cost livestock feed 
generate a_lc_enga = rnormal(0.114,0.102)
generate b_lc_enga = rnormal(0.408,0.110)
generate IE_lc_enga = a_lc_enga*b_lc_enga
kdensity IE_lc_enga
sum IE_lc_enga
_pctile IE_lc_enga, p(2.5 97.5)
return list

************** Effect on production of cereal and milk 

***************Extension services 
teffects ipwra (lproduction_lait sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_ext_serv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)
tebalance overid,nolog

teffects ipwra (lprod_cereal_princ sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_ext_serv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit) if newc1==0
tebalance overid,nolog

***** Low_cost livestock feed 
teffects ipwra (lproduction_lait sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( access_alimbet_pm sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)
tebalance overid,nolog

teffects ipwra (lprod_cereal_princ sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( access_alimbet_pm sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit) if newc1==0
tebalance overid,nolog

****** Private veternirary services
 
teffects ipwra (lproduction_lait sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_health_an_priv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit)if vp_lait==0
tebalance overid,nolog

teffects ipwra (lprod_cereal_princ sex_cm_fem age_cm dummy_sud prop_enf_0_3ans prop_enf_4_10ans prop_ado prop_jeune_adulte prop_adulte touareg peulh haoussa instruc_cm_aucune instruc_cm_prim) ( acc_health_an_priv sex_cm_fem age_cm dummy_sud petit_el grand_el  instruc_cm_aucune instruc_cm_prim touareg peulh haoussa , probit) if newc1==0
tebalance overid,nolog

