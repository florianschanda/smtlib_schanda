(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.940599069194580916786208035773597657680511474609375p-625 {- 4236081617529750 -625 (-1.39376e-188)}
; Y = -1.87973594346218586537133887759409844875335693359375p285 {- 3961978467160732 285 (-1.16855e+086)}
; -1.940599069194580916786208035773597657680511474609375p-625 > -1.87973594346218586537133887759409844875335693359375p285 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110001110 #b1111000011001011000110011100000011010110101110010110)))
(assert (= y (fp #b1 #b10100011100 #b1110000100110110010111111111001001001001001010011100)))
(assert (= (fp.gt x y) true))
(check-sat)
(exit)
