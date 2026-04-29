(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.8962829970180965499793046546983532607555389404296875p-554 {- 4036499771389211 -554 (-3.21577e-167)}
; -1.8962829970180965499793046546983532607555389404296875p-554 | == 1.8962829970180965499793046546983532607555389404296875p-554
; [HW: 1.8962829970180965499793046546983532607555389404296875p-554] 

; mpf : + 4036499771389211 -554
; mpfd: + 4036499771389211 -554 (3.21577e-167) class: Pos. norm. non-zero
; hwf : + 4036499771389211 -554 (3.21577e-167) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b00111010101 #b1110010101110010110011010111000000100111010100011011)))
(assert (= r (fp #b0 #b00111010101 #b1110010101110010110011010111000000100111010100011011)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
