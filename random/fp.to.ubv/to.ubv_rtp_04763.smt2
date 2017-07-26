(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTP +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0661A4AA)))
;; x should be Float32(0x0661A4AA [Rational(7393877, 174224571863520493293247799005065324265472), 0.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be 1

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000000000000001))
;; z should be 1

(assert (not (= y z)))
(check-sat)
(exit)
