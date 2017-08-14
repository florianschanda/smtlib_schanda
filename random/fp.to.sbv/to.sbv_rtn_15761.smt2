(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTN +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10011100 #b00001110010010111101011)))
;; x should be Float32(0x4E0725EB [Rational(566852288), 566852288.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RTN x)))
;; y should be 566852288

(declare-const z (_ BitVec 32))
(assert (= z #b00100001110010010111101011000000))
;; z should be 566852288

(assert (not (= y z)))
(check-sat)
(exit)
