(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.0895448202500517265178814341197721660137176513671875p14 {+ 403274019111091 14 (17851.1)}
; 1.0895448202500517265178814341197721660137176513671875p14 S == 1.043812636563694606905983164324425160884857177734375p7
; [HW: 1.043812636563694606905983164324425160884857177734375p7] 

; mpf : + 197314573702374 7
; mpfd: + 197314573702374 7 (133.608) class: Pos. norm. non-zero
; hwf : + 197314573702374 7 (133.608) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000001101 #b0001011011101100011010001100101010000000000010110011)))
(assert (= r (fp #b0 #b10000000110 #b0000101100110111010011100001000100110001010011100110)))
(assert (= (fp.sqrt roundTowardNegative x) r))
(check-sat)
(exit)
