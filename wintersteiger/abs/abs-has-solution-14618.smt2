(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.330504743633345920983401811099611222743988037109375p-363 {- 1488461040271318 -363 (-7.08154e-110)}
; -1.330504743633345920983401811099611222743988037109375p-363 | == 1.330504743633345920983401811099611222743988037109375p-363
; [HW: 1.330504743633345920983401811099611222743988037109375p-363] 

; mpf : + 1488461040271318 -363
; mpfd: + 1488461040271318 -363 (7.08154e-110) class: Pos. norm. non-zero
; hwf : + 1488461040271318 -363 (7.08154e-110) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b01010010100 #b0101010010011011111101010111100100010011111111010110)))
(assert (= r (fp #b0 #b01010010100 #b0101010010011011111101010111100100010011111111010110)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
