(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x4AF387B4)))
;; x should be Float32(0x4AF387B4 [Rational(7979994), 7979994.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 7979994

(declare-const z (_ BitVec 32))
(assert (= z #b00000000011110011100001111011010))
;; z should be 7979994

(assert (not (= y z)))
(check-sat)
(exit)
