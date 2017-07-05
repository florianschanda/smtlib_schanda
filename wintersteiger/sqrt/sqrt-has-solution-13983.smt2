(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.3178190032983649881970222850213758647441864013671875p780 {+ 1431329544825779 780 (8.38016e+234)}
; 1.3178190032983649881970222850213758647441864013671875p780 S == 1.14796297993374540880040513002313673496246337890625p390
; [HW: 1.14796297993374540880040513002313673496246337890625p390] 

; mpf : + 666366021294244 390
; mpfd: + 666366021294244 390 (2.89485e+117) class: Pos. norm. non-zero
; hwf : + 666366021294244 390 (2.89485e+117) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11100001011 #b0101000101011100100101100001000100110110101110110011)))
(assert (= r (fp #b0 #b10110000101 #b0010010111100000111001101101111111010101100010100100)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
