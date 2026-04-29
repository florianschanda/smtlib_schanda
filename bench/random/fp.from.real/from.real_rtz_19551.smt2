(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10011110 #b01011011011110010110001)))
;; x should be Float32(0xCF2DBCB1 [Rational(-2914824448), -2914824448.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- 2170729919.0))))
;; w should be Float32(0xCF0162B5 [Rational(-2170729728), -2170729728.000000])

(assert (distinct x w))
(check-sat)
(exit)
