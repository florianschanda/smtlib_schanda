(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTP -subnormal)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b00101011111000100011011)))
;; x should be Float32(0x8015F11B [Rational(-1437979, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 0

(declare-const z Int)
(assert (= z 0))
(assert (not (= y z)))
