(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b00100000 #b11011010100101111101001)))
;; x should be Float32(0x106D4BE9 [Rational(15551465, 332306998946228968225951765070086144), 0.000000])

(declare-const y (_ BitVec 8))
(assert (= y ((_ fp.to_sbv 8) RTP x)))
;; y should be 1

(declare-const z (_ BitVec 8))
(assert (= z #b00000001))
;; z should be 1

(assert (not (= y z)))
(check-sat)
(exit)
