(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00000001)))
;; y should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x9846F862)))
;; z should be Float32(0x9846F862 [Rational(-6519857, 2535301200456458802993406410752), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b1 #b00110000 #b10001101111100001100010))))
(check-sat)
(exit)
