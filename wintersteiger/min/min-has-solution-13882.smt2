(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.6358241168449578761823204331449232995510101318359375p-866 {- 2863497255696127 -866 (-3.32476e-261)}
; Y = 1.724693943674663554332937565050087869167327880859375p-385 {+ 3263731374690870 -385 (2.18859e-116)}
; -1.6358241168449578761823204331449232995510101318359375p-866 m 1.724693943674663554332937565050087869167327880859375p-385 == -1.6358241168449578761823204331449232995510101318359375p-866
; [HW: -1.6358241168449578761823204331449232995510101318359375p-866] 

; mpf : - 2863497255696127 -866
; mpfd: - 2863497255696127 -866 (-3.32476e-261) class: Neg. norm. non-zero
; hwf : - 2863497255696127 -866 (-3.32476e-261) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00010011101 #b1010001011000101010111101000101111011011011011111111)))
(assert (= y (fp #b0 #b01001111110 #b1011100110000101100010101101001110110001001000110110)))
(assert (= r (fp #b1 #b00010011101 #b1010001011000101010111101000101111011011011011111111)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
