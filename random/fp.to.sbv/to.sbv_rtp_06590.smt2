(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x97F70A17)))
;; x should be Float32(0x97F70A17 [Rational(-16189975, 10141204801825835211973625643008), -0.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTP x)))
;; y should be 0

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000000000))
;; z should be 0

(assert (not (= y z)))
(check-sat)
(exit)
