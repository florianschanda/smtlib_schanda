(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x00800000 [Rational(1, 85070591730234615865843651857942052864), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x60D46B2E)))
;; y should be Float32(0x60D46B2E [Rational(122451026688669122560), 122451026688669122560.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b00010101100011101100101)))
;; z should be Float32(0x000AC765 [Rational(706405, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x21D46B2F))))
(check-sat)
(exit)
