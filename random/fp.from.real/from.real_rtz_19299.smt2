(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x53C99231)))
;; x should be Float32(0x53C99231 [Rational(1731482222592), 1731482222592.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 43287058266866.0 25.0))))
;; w should be Float32(0x53C99231 [Rational(1731482222592), 1731482222592.000000])

(assert (= x w))
(check-sat)
(exit)
