(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.ubv RTP +subnormal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0041BE21)))
;; x should be Float32(0x0041BE21 [Rational(4308513, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RTP x)))
;; y should be 1

(declare-const z (_ BitVec 8))
(assert (= z #b00000001))
;; z should be 1

(assert (= y z))
(check-sat)
(exit)
