(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.070821609681553265858156009926460683345794677734375p-615 {+ 318952174971622 -615 (7.87535e-186)}
; Y = 1.5582351004151180351442462779232300817966461181640625p143 {+ 2514067390214657 143 (1.73749e+043)}
; 1.070821609681553265858156009926460683345794677734375p-615 M 1.5582351004151180351442462779232300817966461181640625p143 == 1.5582351004151180351442462779232300817966461181640625p143
; [HW: 1.5582351004151180351442462779232300817966461181640625p143] 

; mpf : + 2514067390214657 143
; mpfd: + 2514067390214657 143 (1.73749e+043) class: Pos. norm. non-zero
; hwf : + 2514067390214657 143 (1.73749e+043) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110011000 #b0001001000100001010111010111000101101110101011100110)))
(assert (= y (fp #b0 #b10010001110 #b1000111011101000011111101101101111000011001000000001)))
(assert (= r (fp #b0 #b10010001110 #b1000111011101000011111101101101111000011001000000001)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
