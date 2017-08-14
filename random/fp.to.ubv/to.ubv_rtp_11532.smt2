(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP -halfpoint)
;; This benchmark relies on partial functions.
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b00001100111100001001000)))
;; x should be Float32(0xCA867848 [Rational(-4406308), -4406308.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RTP x)))
;; y should be unspecified

(declare-const z (_ BitVec 32))
(assert (= z #b11101111101110111011101100100110))
;; z should be 4022057766

(assert (not (= y z)))
(check-sat)
(exit)
