(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10110011 #b10101101001100100000111)))
;; x should be Float32(0xD9D69907 [Rational(-7550487544987648), -7550487544987648.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00398B4D)))
;; y should be Float32(0x00398B4D [Rational(3771213, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80800000)))
;; z should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #x9A40F361))))
(check-sat)
(exit)
