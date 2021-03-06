(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTP +sbv_8_bound)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x42FE0000)))
;; x should be Float32(0x42FE0000 [Rational(127), 127.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_ubv 8) RTP x)))
;; y should be 127

(declare-const z (_ BitVec 8))
(assert (= z #b01111111))
;; z should be 127

(assert (not (= y z)))
(check-sat)
(exit)
