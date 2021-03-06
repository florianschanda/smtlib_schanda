(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111001 #b00000100011101000111000)))
;; x should be Float32(0x7C823A38 [Rational(5409435265149121499171669614675361792), 5409435265149121499171669614675361792.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b00000000000000000000001)))
;; y should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x497F5E78)))
;; z should be Float32(0x497F5E78 [Rational(2091983, 2), 1045991.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b0 #b10010010 #b11111110101111001111000))))
(check-sat)
(exit)
