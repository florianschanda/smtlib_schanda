(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.9571987952129201726592100385460071265697479248046875p451 {- 4310840137440395 451 (-1.13805e+136)}
; Y = -1.0626353395328933526542414256255142390727996826171875p9 {- 282084491780563 9 (-544.069)}
; -1.9571987952129201726592100385460071265697479248046875p451 = -1.0626353395328933526542414256255142390727996826171875p9 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b10111000010 #b1111010100001010111110101111000100110101110010001011)))
(assert (= y (fp #b1 #b10000001000 #b0001000000001000110111101001111011011110000111010011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
