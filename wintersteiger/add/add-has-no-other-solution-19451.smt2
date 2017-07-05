(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.5569658164433446412289185900590382516384124755859375p-336 {+ 2508351043392351 -336 (1.11225e-101)}
; Y = 1.8471512589203424870021308379364199936389923095703125p-639 {+ 3815230094000101 -639 (8.09721e-193)}
; 1.5569658164433446412289185900590382516384124755859375p-336 + 1.8471512589203424870021308379364199936389923095703125p-639 == 1.5569658164433446412289185900590382516384124755859375p-336
; [HW: 1.5569658164433446412289185900590382516384124755859375p-336] 

; mpf : + 2508351043392351 -336
; mpfd: + 2508351043392351 -336 (1.11225e-101) class: Pos. norm. non-zero
; hwf : + 2508351043392351 -336 (1.11225e-101) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01010101111 #b1000111010010101010011111100111010011101001101011111)))
(assert (= y (fp #b0 #b00110000000 #b1101100011011110111001111010011111010011111111100101)))
(assert (= r (fp #b0 #b01010101111 #b1000111010010101010011111100111010011101001101011111)))
(assert  (not (= (fp.add roundTowardZero x y) r)))
(check-sat)
(exit)
