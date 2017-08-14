(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -subnormal)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11100001011101100100011)))
;; x should be Float32(0x8070BB23 [Rational(-7387939, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 0

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000000000000000))
;; z should be 0

(assert (= y z))
(check-sat)
(exit)
