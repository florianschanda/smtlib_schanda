(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = -1.74495158775089720393225434236228466033935546875p855 {- 3354963693004000 855 (-4.19208e+257)}
; -1.74495158775089720393225434236228466033935546875p855 S == NaN
; [HW: NaN] 

; mpf : + 4503599627370495 1024
; mpfd: + 4503599627370495 1024 (1.#QNAN) class: NaN
; hwf : - 2251799813685248 1024 (-1.#IND) class: NaN

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11101010110 #b1011111010110101001001011011001001111110010011100000)))
(assert (= r (_ NaN 11 53)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
