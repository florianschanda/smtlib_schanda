(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.7878261472428584877292223609401844441890716552734375p943 {+ 3548053543155671 943 (1.32926e+284)}
; Y = -1.0116499695651011148100906211766414344310760498046875p569 {- 52466798592267 569 (-1.95478e+171)}
; 1.7878261472428584877292223609401844441890716552734375p943 > -1.0116499695651011148100906211766414344310760498046875p569 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11110101110 #b1100100110101110111110010111000101010111011111010111)))
(assert (= y (fp #b1 #b11000111000 #b0000001011111011011111100000111001001000000100001011)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
