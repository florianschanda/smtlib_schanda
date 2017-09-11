(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTP +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x684CACD0)))
;; x should be Float32(0x684CACD0 [Rational(3866202361862582221930496), 3866202361862582221930496.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 3866202361862582221930496

(declare-const z Int)
(assert (= z 3866202361862582221930496))
(assert (not (= y z)))
