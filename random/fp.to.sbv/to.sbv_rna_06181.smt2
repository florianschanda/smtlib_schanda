(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10111000101001000010010)))
;; x should be Float32(0xCADC5212 [Rational(-7219465), -7219465.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 8))
(assert (not (= y z)))
(check-sat)
(exit)
