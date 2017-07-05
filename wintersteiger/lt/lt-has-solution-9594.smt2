(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.15256568386123081637606446747668087482452392578125p581 {- 687094756986964 581 (-9.12207e+174)}
; Y = -1.60762733771984311914593490655533969402313232421875p156 {- 2736510251735212 156 (-1.46847e+047)}
; -1.15256568386123081637606446747668087482452392578125p581 < -1.60762733771984311914593490655533969402313232421875p156 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b11001000100 #b0010011100001110100010110110111010101101000001010100)))
(assert (= y (fp #b1 #b10010011011 #b1001101110001101011101110001011110101001100010101100)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
