(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b01100100110000001001100)))
;; x should be Float32(0x49B2604C [Rational(2922515, 2), 1461257.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x005A0644)))
;; y should be Float32(0x005A0644 [Rational(1474961, 178405961588244985132285746181186892047843328), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x6FDA6D67)))
;; z should be Float32(0x6FDA6D67 [Rational(135199982918277910271004508160), 135199982918277910271004508160.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #x6FDA6D67))))
(check-sat)
(exit)
