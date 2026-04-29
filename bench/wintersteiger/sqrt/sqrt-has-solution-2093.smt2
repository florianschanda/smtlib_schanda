(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.2672314847410179883269165657111443579196929931640625p-920 {+ 1203503615101313 -920 (1.42975e-277)}
; 1.2672314847410179883269165657111443579196929931640625p-920 S == 1.125713766790216396884716232307255268096923828125p-460
; [HW: 1.125713766790216396884716232307255268096923828125p-460] 

; mpf : + 566164473271760 -460
; mpfd: + 566164473271760 -460 (3.7812e-139) class: Pos. norm. non-zero
; hwf : + 566164473271760 -460 (3.7812e-139) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00001100111 #b0100010001101001010010000101011101101100100110000001)))
(assert (= r (fp #b0 #b01000110011 #b0010000000101110110001110000010100000101010111010000)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
