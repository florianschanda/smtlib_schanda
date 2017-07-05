(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.040841471204980717146781898918561637401580810546875p558 {- 183933634500014 558 (-9.82024e+167)}
; Y = -1.8080009580798954704761172251892276108264923095703125p-657 {- 3638912813723621 -657 (-3.02337e-198)}
; -1.040841471204980717146781898918561637401580810546875p558 M -1.8080009580798954704761172251892276108264923095703125p-657 == -1.8080009580798954704761172251892276108264923095703125p-657
; [HW: -1.8080009580798954704761172251892276108264923095703125p-657] 

; mpf : - 3638912813723621 -657
; mpfd: - 3638912813723621 -657 (-3.02337e-198) class: Neg. norm. non-zero
; hwf : - 3638912813723621 -657 (-3.02337e-198) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11000101101 #b0000101001110100100101100010111100100101010110101110)))
(assert (= y (fp #b1 #b00101101110 #b1100111011011001001001101001101000010110111111100101)))
(assert (= r (fp #b1 #b00101101110 #b1100111011011001001001101001101000010110111111100101)))
(assert  (not (= (fp.max x y) r)))
(check-sat)
(exit)
