(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.0487907921018162493709269256214611232280731201171875p1015 {- 219734193128851 1015 (-3.68243e+305)}
; Y = 1.5457838164577413220257540160673670470714569091796875p-233 {+ 2457991792423931 -233 (1.11985e-070)}
; -1.0487907921018162493709269256214611232280731201171875p1015 = 1.5457838164577413220257540160673670470714569091796875p-233 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111110110 #b0000110001111101100011011010100001101100010110010011)))
(assert (= y (fp #b0 #b01100010110 #b1000101110111000011111001111101001011111001111111011)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
