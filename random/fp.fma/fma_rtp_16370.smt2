(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x603F6299)))
;; x should be Float32(0x603F6299 [Rational(55163012936963719168), 55163012936963719168.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00000001)))
;; y should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCAE79EB1)))
;; z should be Float32(0xCAE79EB1 [Rational(-15179441, 2), -7589720.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #xCAE79EB0))))
(check-sat)
(exit)
