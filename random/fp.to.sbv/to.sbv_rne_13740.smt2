(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.sbv RNE -halfpoint)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10100100010001100001100)))
;; x should be Float32(0xCAD2230C [Rational(-6885766), -6885766.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be -6885766

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111100101101110111001111010))
;; z should be -6885766

(assert (= y z))
(check-sat)
(exit)
