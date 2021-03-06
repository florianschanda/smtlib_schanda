(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNA -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11001111 #b01101001010001010000111)))
;; x should be Float32(0xE7B4A287 [Rational(-1706048134463344412196864), -1706048134463344412196864.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be unspecified

(declare-const z (_ BitVec 64))
(assert (= z #b1101100110111101110001011011010011100110110110110100111110011100))
;; z should be -2756830016122957924

(assert (= y z))
(check-sat)
(exit)
