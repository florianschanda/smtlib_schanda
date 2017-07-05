(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.03698911451843844844233899493701756000518798828125p-232 {+ 166584162362004 -232 (1.5025e-070)}
; Y = 1.163240623001655205115412172744981944561004638671875p-15 {+ 735170408921982 -15 (3.54993e-005)}
; 1.03698911451843844844233899493701756000518798828125p-232 + 1.163240623001655205115412172744981944561004638671875p-15 == 1.163240623001655205115412172744981944561004638671875p-15
; [HW: 1.163240623001655205115412172744981944561004638671875p-15] 

; mpf : + 735170408921982 -15
; mpfd: + 735170408921982 -15 (3.54993e-005) class: Pos. norm. non-zero
; hwf : + 735170408921982 -15 (3.54993e-005) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100010111 #b0000100101111000000111100101110100101010001010010100)))
(assert (= y (fp #b0 #b01111110000 #b0010100111001010001000110011000100101011101101111110)))
(assert (= r (fp #b0 #b01111110000 #b0010100111001010001000110011000100101011101101111110)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
