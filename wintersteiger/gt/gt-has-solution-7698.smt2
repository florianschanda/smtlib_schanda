(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.5897805960847046780060054516070522367954254150390625p-304 {+ 2656135672757425 -304 (4.87774e-092)}
; Y = 1.7338389945814547399294269780511967837810516357421875p-109 {+ 3304917022546979 -109 (2.6714e-033)}
; 1.5897805960847046780060054516070522367954254150390625p-304 > 1.7338389945814547399294269780511967837810516357421875p-109 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01011001111 #b1001011011111011110111000111001111111111110010110001)))
(assert (= y (fp #b0 #b01110010010 #b1011101111011100110111110101001001000001110000100011)))
(assert (= (fp.gt x y) false))
(check-sat)
(exit)
