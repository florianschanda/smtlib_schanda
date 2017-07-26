(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -normal)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b11110010 #b01100110100000111011000)))
;; x should be Float32(0xF93341D8 [Rational(-58172287974067161573839726234828800), -58172287974067161573839726234828800.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNE x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b00010100010011101110101000011000))
;; z should be 340716056

(assert (not (= y z)))
(check-sat)
(exit)
