(set-info :source "Generated by Martin Brain on 2017-09-11 17:03:28+01:00 from revision 3122, file edge-cases.cpp (e9e19ccafc765b17a02ad5b1823da64784bdb15f6a6f20b565946f120425794c01655acf4691d527ae598c5ed453a1d66c9a6ec8728a695adf9acfc5091b43c9  edge-cases.cpp), benchmark the_answer_is_zero_2_sat using cbmc revision 6561 command /home/martin/working-copies/cbmc-subversion/src/cbmc//cbmc --slice-formula --smt2 --fpa --outfile tmp.smt2 --function the_answer_is_zero_2_sat --round-to-zero edge-cases.cpp")
(set-logic QF_ABVFP)
(set-info :status sat)
; SMT 2

; find_symbols
(declare-fun |nondet_symex::nondet0| () (_ FloatingPoint 8 24))
; set_to true (equal)
(define-fun |the_answer_is_zero_2_sat::the_answer_is_zero_2_sat(float,float)::f@1#1| () (_ FloatingPoint 8 24) |nondet_symex::nondet0|)

; find_symbols
(declare-fun |nondet_symex::nondet1| () (_ FloatingPoint 8 24))
; set_to true (equal)
(define-fun |the_answer_is_zero_2_sat::the_answer_is_zero_2_sat(float,float)::g@1#1| () (_ FloatingPoint 8 24) |nondet_symex::nondet1|)

; set_to true (equal)
(define-fun |the_answer_is_zero_2_sat::the_answer_is_zero_2_sat(float,float)::1::a@1#2| () Bool (fp.eq |the_answer_is_zero_2_sat::the_answer_is_zero_2_sat(float,float)::f@1#1| (fp.neg |the_answer_is_zero_2_sat::the_answer_is_zero_2_sat(float,float)::f@1#1|)))

; set_to true (equal)
(define-fun |the_answer_is_zero_2_sat::the_answer_is_zero_2_sat(float,float)::1::b@1#2| () Bool (fp.eq |the_answer_is_zero_2_sat::the_answer_is_zero_2_sat(float,float)::g@1#1| (fp.neg |the_answer_is_zero_2_sat::the_answer_is_zero_2_sat(float,float)::g@1#1|)))

; set_to true (equal)
(define-fun |smtlib_equal::smtlib_equal(float,float)::f@1#1| () (_ FloatingPoint 8 24) |the_answer_is_zero_2_sat::the_answer_is_zero_2_sat(float,float)::f@1#1|)

; set_to true (equal)
(define-fun |smtlib_equal::smtlib_equal(float,float)::g@1#1| () (_ FloatingPoint 8 24) |the_answer_is_zero_2_sat::the_answer_is_zero_2_sat(float,float)::g@1#1|)

; the following is a substitute for a string
(declare-fun string.0 () (Array (_ BitVec 64) (_ BitVec 8)))
(assert (= (select string.0(_ bv0 64)) (_ bv61 8)))
(assert (= (select string.0(_ bv1 64)) (_ bv0 8)))
; set_to true (equal)
(define-fun |smtlib_equal(float,float)::$tmp::return_value___CPROVER_uninterpreted_smt_escape_float_equal$1!0@1#2| () Bool ( = |smtlib_equal::smtlib_equal(float,float)::f@1#1| |smtlib_equal::smtlib_equal(float,float)::g@1#1| ) )

; set_to true (equal)
(define-fun |smtlib_equal(float,float)#return_value!0#1| () Bool |smtlib_equal(float,float)::$tmp::return_value___CPROVER_uninterpreted_smt_escape_float_equal$1!0@1#2|)

; set_to true (equal)
(define-fun |the_answer_is_zero_2_sat::the_answer_is_zero_2_sat(float,float)::1::s@1#2| () Bool |smtlib_equal(float,float)#return_value!0#1|)

; set_to false
(assert (not (and (not |the_answer_is_zero_2_sat::the_answer_is_zero_2_sat(float,float)::1::s@1#2|) |the_answer_is_zero_2_sat::the_answer_is_zero_2_sat(float,float)::1::a@1#2| |the_answer_is_zero_2_sat::the_answer_is_zero_2_sat(float,float)::1::b@1#2|)))

(check-sat)


(exit)
; end of SMT2 file
