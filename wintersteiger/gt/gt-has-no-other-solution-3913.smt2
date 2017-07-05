(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.6682368144817754096465023394557647407054901123046875p-461 {+ 3009471068695371 -461 (2.80175e-139)}
; Y = 1.70340758132179104222814203239977359771728515625p19 {+ 3167866121130400 19 (893076)}
; 1.6682368144817754096465023394557647407054901123046875p-461 > 1.70340758132179104222814203239977359771728515625p19 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b01000110010 #b1010101100010001100100010110000000101110101101001011)))
(assert (= y (fp #b0 #b10000010010 #b1011010000010010100001001110110110001001000110100000)))
(assert  (not (= (fp.gt x y) false)))
(check-sat)
(exit)
