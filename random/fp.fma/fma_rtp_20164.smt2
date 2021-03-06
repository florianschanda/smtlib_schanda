(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10000100001000110011000)))
;; x should be Float32(0x80421198 [Rational(-541235, 89202980794122492566142873090593446023921664), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b11000010 #b10001011100101001001111)))
;; y should be Float32(0xE145CA4F [Rational(-228036653314975203328), -228036653314975203328.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x007FFFFF)))
;; z should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x21CC2F01))))
(check-sat)
(exit)
