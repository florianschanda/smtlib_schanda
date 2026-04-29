(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b01101010001000100111010)))
;; x should be Float32(0x4AB5113A [Rational(5933213), 5933213.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be 5933213

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000010110101000100010011101))
;; z should be 5933213

(assert (not (= y z)))
(check-sat)
(exit)
