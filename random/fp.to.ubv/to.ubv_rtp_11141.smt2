(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4A84D10E)))
;; x should be Float32(0x4A84D10E [Rational(4352135), 4352135.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RTP x)))
;; y should be 4352135

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010000100110100010000111))
;; z should be 4352135

(assert (not (= y z)))
(check-sat)
(exit)
