(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.9031481778122183445844939342350699007511138916015625p431 {- 4067417797055449 431 (-1.05536e+130)}
; Y = 1.367106730237527489890680953976698219776153564453125p181 {+ 1653301733502930 181 (4.19017e+054)}
; -1.9031481778122183445844939342350699007511138916015625p431 M 1.367106730237527489890680953976698219776153564453125p181 == 1.367106730237527489890680953976698219776153564453125p181
; [HW: 1.367106730237527489890680953976698219776153564453125p181] 

; mpf : + 1653301733502930 181
; mpfd: + 1653301733502930 181 (4.19017e+054) class: Pos. norm. non-zero
; hwf : + 1653301733502930 181 (4.19017e+054) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10110101110 #b1110011100110100101110000000111100100101001111011001)))
(assert (= y (fp #b0 #b10010110100 #b0101110111111010101101001110100010000010111111010010)))
(assert (= r (fp #b0 #b10010110100 #b0101110111111010101101001110100010000010111111010010)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
