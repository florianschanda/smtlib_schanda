(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0255934773865515996504882423323579132556915283203125p-672 {+ 115262775221189 -672 (5.23381e-203)}
; Y = -1.6179580762095062684835511390701867640018463134765625p-658 {- 2783035761747721 -658 (-1.35279e-198)}
; 1.0255934773865515996504882423323579132556915283203125p-672 < -1.6179580762095062684835511390701867640018463134765625p-658 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101011111 #b0000011010001101010010110100110001011101101111000101)))
(assert (= y (fp #b1 #b00101101101 #b1001111000110010100000000001111110011110011100001001)))
(assert (= (fp.lt x y) false))
(check-sat)
(exit)
