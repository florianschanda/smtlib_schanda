(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA62138A)))
;; x should be Float32(0xCA62138A [Rational(-7408069, 2), -3704034.500000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be -3704035

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111110001110111101100011101))
;; z should be -3704035

(assert (= y z))
(check-sat)
(exit)
