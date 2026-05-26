(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-logic QF_FP)
(set-info :source |Floating point problems from Florian Schanda|)
(set-info :category crafted)
(set-info :status sat)

;; The x87 FPU can be configured to use 32 or 64 bit precision,
;; instead of the default 80. The gcc options for these are -mpc32 and
;; -mpc64. You migh think that this allows you to do precise
;; arithmetic, but that is not the case as there are double-rounding
;; issues as the X87 FPU always uses 15 bits for the exponent.

(declare-const a Float32)
(declare-const b Float32)
(assert (fp.isNormal a))
(assert (fp.isNormal b))

(declare-const fpu_a (_ FloatingPoint 15 32))
(assert (= fpu_a ((_ to_fp 15 32) RNE a)))

(declare-const fpu_b (_ FloatingPoint 15 32))
(assert (= fpu_b ((_ to_fp 15 32) RNE b)))

(declare-const fpu_r (_ FloatingPoint 15 32))
(assert (= fpu_r (fp.add RNE fpu_a fpu_b)))

(declare-const r Float32)
(assert (= r ((_ to_fp 8 24) RNE fpu_r)))

(declare-const expect Float32)
(assert (= expect (fp.add RNE a b)))

(assert (not (= r expect)))
(check-sat)
(exit)
