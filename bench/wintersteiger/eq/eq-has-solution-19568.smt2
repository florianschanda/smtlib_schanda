(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.699873236347181570948805529042147099971771240234375p979 {- 3151948846419750 979 (-8.68525e+294)}
; Y = 1.48913535407904884522167776594869792461395263671875p516 {+ 2202869798364140 516 (3.19457e+155)}
; -1.699873236347181570948805529042147099971771240234375p979 = 1.48913535407904884522167776594869792461395263671875p516 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11111010010 #b1011001100101010111001000111010101110100111100100110)))
(assert (= y (fp #b0 #b11000000011 #b0111110100110111111110010111110100010110001111101100)))
(assert (= (fp.eq x y) false))
(check-sat)
(exit)
